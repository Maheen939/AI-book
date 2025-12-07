/**
 * Sidebar configuration for Docusaurus.
 */
module.exports = {
  tutorialSidebar: [
    'index',
    'getting-started',
    {
      type: 'category',
      label: 'Specification',
      items: [
        {
          type: 'link',
          label: 'Textbook Spec',
          href: '/specs/physical-ai-robotics-textbook/spec.md',
        },
      ],
    },
  ],
};
