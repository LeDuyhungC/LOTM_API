describe('Sample Test Suite', () => {
  it('should verify jest and ts-jest are configured properly', () => {
    const sum = (a: number, b: number): number => a + b;
    expect(sum(2, 3)).toBe(5);
  });
});
