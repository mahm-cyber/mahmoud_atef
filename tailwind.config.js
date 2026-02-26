/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ['web/**', 'lib/**'],
    theme: {
        extend: {
            colors: {
                primary: '#5E3BEE',
                'primary-dark': '#503AE7',
                heading: '#282938',
                body: '#1C1E53',
                'body-light': '#232536',
                'bg-shade': '#F5FCFF',
                'bg-mint': '#ECFFFD',
                'bg-soft': '#EEF4FA',
                'dark-400': '#111218',
            },
            fontFamily: {
                roboto: ['Roboto', 'sans-serif'],
            },
            fontSize: {
                'h1': ['56px', { lineHeight: '1.2' }],
                'h2': ['48px', { lineHeight: '1.2' }],
                'h3': ['24px', { lineHeight: '1.4' }],
                'body-1': ['18px', { lineHeight: '1.5' }],
                'body-2': ['16px', { lineHeight: '1.5' }],
                'body-3': ['14px', { lineHeight: '1.5' }],
            },
        },
    },
    plugins: [],
};
