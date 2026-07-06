// Vercel serverless function: hands the browser the public Supabase
// config, read from environment variables set in the Vercel dashboard.
module.exports = (req, res) => {
  res.setHeader('Cache-Control', 'no-store');
  res.status(200).json({
    url: process.env.SUPABASE_URL || null,
    anonKey: process.env.SUPABASE_ANON_KEY || null,
  });
};
