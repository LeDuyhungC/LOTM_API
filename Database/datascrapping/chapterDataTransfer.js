
const fs = require("fs");
const path = require("path");

/**
 * @param {string} inputFilePath   - Path to the input .txt file
 * @param {number|string} volumeId - Volume ID to assign to all chapters
 * @param {string} outputFilePath  - Path for the output CSV file
 */
function convertChaptersToCsv(inputFilePath, volumeId, outputFilePath) {
  if (!inputFilePath) {
    console.error("Error: No input file specified.");
    printUsage();
    process.exit(1);
  }

  if (!fs.existsSync(inputFilePath)) {
    console.error(`Error: Input file not found: "${inputFilePath}"`);
    process.exit(1);
  }

  if (volumeId === undefined || volumeId === null || String(volumeId).trim() === "") {
    console.error("Error: No volume ID specified.");
    printUsage();
    process.exit(1);
  }

  const parsedVolumeId = Number(volumeId);
  if (!Number.isInteger(parsedVolumeId) || parsedVolumeId <= 0) {
    console.error(
      `Error: Volume ID must be a positive integer. Got: "${volumeId}"`
    );
    process.exit(1);
  }

  const rawContent = fs.readFileSync(inputFilePath, "utf-8");

  const lines = rawContent
    .split("\n")
    .map((line) => line.trim())
    .filter((line) => line.length > 0);

  if (lines.length === 0) {
    console.error("Error: Input file is empty or contains no data.");
    process.exit(1);
  }

  if (lines.length % 2 !== 0) {
    console.warn(
      `Warning: Odd number of non-empty lines (${lines.length}). ` +
      `The last unpaired line will be ignored.`
    );
  }

  const rows = [];
  for (let i = 0; i + 1 < lines.length; i += 2) {
    const chapterNumber = lines[i];
    const chapterTitle = lines[i + 1];

    if (isNaN(Number(chapterNumber))) {
      console.error(
        `Error: Expected a chapter number on line ${i + 1}, but got: "${chapterNumber}". ` +
        `Ensure the file alternates: chapter number, then chapter title.`
      );
      process.exit(1);
    }

    const safeTitle = escapeCsvField(chapterTitle);

    rows.push(`${parsedVolumeId},${Number(chapterNumber)},${safeTitle}`);
  }

  // --- Build CSV content ---
  const csvHeader = "volume_id,chapter_number,title";
  const csvContent = [csvHeader, ...rows].join("\n") + "\n";

  // --- Write output file ---
  const resolvedOutput = outputFilePath || "chapters_output.csv";
  fs.writeFileSync(resolvedOutput, csvContent, "utf-8");

  console.log(`Done! Converted ${rows.length} chapters.`);
  console.log(`  Volume ID : ${parsedVolumeId}`);
  console.log(`  Input     : ${path.resolve(inputFilePath)}`);
  console.log(`  Output    : ${path.resolve(resolvedOutput)}`);
}

/**
 * Escapes a value for safe CSV inclusion:
 *  - Wraps in double quotes if it contains a comma, double quote, or newline
 *  - Doubles any existing double-quote characters
 *
 * @param {string} field
 * @returns {string}
 */
function escapeCsvField(field) {
  if (/[",\n\r]/.test(field)) {
    return `"${field.replace(/"/g, '""')}"`;
  }
  return field;
}

function printUsage() {
  console.log("");
  console.log("Usage:");
  console.log(
    "  node chapterDataTransfer.js <inputFile> <volumeId> [outputFile]"
  );
  console.log("");
  console.log("Arguments:");
  console.log(
    "  inputFile   - Path to the raw .txt file (alternating chapter number / title lines)"
  );
  console.log(
    "  volumeId    - The volume ID (positive integer) to assign to all chapters"
  );
  console.log(
    "  outputFile  - (Optional) Output CSV path. Defaults to 'chapters_output.csv'"
  );
  console.log("");
  console.log("Example:");
  console.log(
    "  node chapterDataTransfer.js volume1_chapters.txt 1 volume1.csv"
  );
}

const [, , inputFile, volumeId, outputFile] = process.argv;

if (!inputFile) {
  printUsage();
  process.exit(0);
}

convertChaptersToCsv(inputFile, volumeId, outputFile);
