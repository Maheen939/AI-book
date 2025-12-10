import React from 'react';
import ComponentCreator from '@docusaurus/ComponentCreator';

export default [
  {
    path: '/',
    component: ComponentCreator('/', 'a4c'),
    routes: [
      {
        path: '/',
        component: ComponentCreator('/', '98e'),
        exact: true,
        sidebar: "tutorialSidebar"
      },
      {
        path: '/clarify-phase',
        component: ComponentCreator('/clarify-phase', 'f88'),
        exact: true
      },
      {
        path: '/constitution-phase',
        component: ComponentCreator('/constitution-phase', '76c'),
        exact: true
      },
      {
        path: '/getting-started',
        component: ComponentCreator('/getting-started', 'c9b'),
        exact: true,
        sidebar: "tutorialSidebar"
      },
      {
        path: '/implement-phase',
        component: ComponentCreator('/implement-phase', '140'),
        exact: true
      },
      {
        path: '/installation-setup',
        component: ComponentCreator('/installation-setup', '34d'),
        exact: true
      },
      {
        path: '/plan-phase',
        component: ComponentCreator('/plan-phase', '3b1'),
        exact: true
      },
      {
        path: '/spec-kit-plus-foundation',
        component: ComponentCreator('/spec-kit-plus-foundation', '307'),
        exact: true
      },
      {
        path: '/specify-phase',
        component: ComponentCreator('/specify-phase', '055'),
        exact: true
      },
      {
        path: '/tasks-phase',
        component: ComponentCreator('/tasks-phase', '44c'),
        exact: true
      }
    ]
  },
  {
    path: '*',
    component: ComponentCreator('*'),
  },
];
