import { Router } from 'express';

import { abilitiesRouter } from './abilities';
import { aliasesRouter } from './aliases';
import { artifactsRouter } from './artifacts';
import { chaptersRouter } from './chapters';
import { charactersRouter } from './characters';
import { epochsRouter } from './epochs';
import { factionsRouter } from './factions';
import { locationsRouter } from './locations';
import { materialsRouter } from './materials';
import { pathwaysRouter } from './pathways';
import { sefirotsRouter } from './sefirots';
import { sequencesRouter } from './sequences';
import { seriesRouter } from './series';
import { volumesRouter } from './volumes';



const v1Router = Router();
const routers = [
    abilitiesRouter,
    aliasesRouter,
    artifactsRouter,
    chaptersRouter,
    charactersRouter,
    epochsRouter,
    factionsRouter,
    locationsRouter,
    materialsRouter,
    pathwaysRouter,
    sefirotsRouter,
    sequencesRouter,
    seriesRouter,
    volumesRouter,
]

routers.forEach((router) => v1Router.use(router));

export { v1Router };