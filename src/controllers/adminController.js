import * as adminService from '../services/adminService.js';

export const getAdminStats = async (req, res) => {
  try {
    const stats = await adminService.fetchStats();
    res.json({ success: true, data: stats });
  } catch (error) {
    res.status(500).json({
      success: false,
      error: 'Server error',
    });
  }
};
