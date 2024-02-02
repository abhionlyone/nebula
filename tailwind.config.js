module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    // Consider adding any other directories where you use Tailwind classes
  ],
  // Enable the Just-In-Time (JIT) mode for faster build times and smaller file sizes
  mode: 'jit',
  // Customize your Tailwind theme (optional)
  theme: {
    extend: {
      // Extend the default Tailwind palette, typography, spacing, etc. as needed
      colors: {
        'custom-color': '#123456',
      },
      // Add other theme extensions here
    },
  },
  // Add custom variants (optional)
  variants: {
    extend: {
      // For example, adding a 'focus-visible' variant
      visibility: ['focus-visible'],
    },
  },
  // Add Tailwind plugins (optional, but useful for complex projects)
  plugins: [
    // require('@tailwindcss/forms'),  // If you need better styling for forms
    // require('@tailwindcss/typography'),  // For prose content like blog posts
    // Add other plugins as needed
  ],
  // Other Tailwind configuration options...
};
