/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : sims

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 05/09/2022 03:03:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_detail_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `m_detail_pembayaran`;
CREATE TABLE `m_detail_pembayaran`  (
  `id_detail_pembayaran` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_pembayaran` bigint(11) NULL DEFAULT NULL,
  `transaksi_kode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_item` bigint(11) NULL DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_harga` bigint(11) NULL DEFAULT NULL,
  `jumlah_barang` int(9) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_detail_pembayaran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_detail_pembayaran
-- ----------------------------
INSERT INTO `m_detail_pembayaran` VALUES (19, 36, 'INV/IX/2022/001', 1, 'Besi Beton', 200000, 2, '2022-09-05 01:09:46', '2022-09-04 18:09:46');
INSERT INTO `m_detail_pembayaran` VALUES (20, 36, 'INV/IX/2022/001', 2, 'Kayu Balok', 60000, 3, '2022-09-05 01:09:46', '2022-09-04 18:09:46');
INSERT INTO `m_detail_pembayaran` VALUES (21, 37, 'INV/IX/2022/037', 3, 'Keramik', 50000, 2, '2022-09-05 01:10:09', '2022-09-04 18:10:09');
INSERT INTO `m_detail_pembayaran` VALUES (22, 37, 'INV/IX/2022/037', 4, 'Batu Bata', 30000, 3, '2022-09-05 01:10:09', '2022-09-04 18:10:09');
INSERT INTO `m_detail_pembayaran` VALUES (23, 38, 'INV/IX/2022/038', 1, 'Besi Beton', 100000, 1, '2022-09-05 01:10:42', '2022-09-04 18:10:42');
INSERT INTO `m_detail_pembayaran` VALUES (24, 38, 'INV/IX/2022/038', 4, 'Batu Bata', 200000, 20, '2022-09-05 01:10:42', '2022-09-04 18:10:42');
INSERT INTO `m_detail_pembayaran` VALUES (25, 38, 'INV/IX/2022/038', 6, 'Cat Tembok', 165000, 3, '2022-09-05 01:10:42', '2022-09-04 18:10:42');
INSERT INTO `m_detail_pembayaran` VALUES (26, 39, 'INV/IX/2022/039', 1, 'Besi Beton', 200000, 2, '2022-09-05 01:17:43', '2022-09-04 18:17:43');
INSERT INTO `m_detail_pembayaran` VALUES (27, 40, 'INV/IX/2022/040', 5, 'Cat Kayu', 1000000, 5, '2022-09-05 02:30:06', '2022-09-04 19:30:06');
INSERT INTO `m_detail_pembayaran` VALUES (28, 41, 'INV/IX/2022/041', 5, 'Cat Kayu', 1000000, 5, '2022-09-05 02:30:49', '2022-09-04 19:30:49');
INSERT INTO `m_detail_pembayaran` VALUES (29, 42, 'INV/IX/2022/042', 5, 'Cat Kayu', 1000000, 5, '2022-09-05 02:32:24', '2022-09-04 19:32:24');
INSERT INTO `m_detail_pembayaran` VALUES (30, 42, 'INV/IX/2022/042', 5, 'Cat Kayu', 1000000, 5, '2022-09-05 02:32:24', '2022-09-04 19:32:24');
INSERT INTO `m_detail_pembayaran` VALUES (31, 43, 'INV/IX/2022/043', 4, 'Batu Bata', 50000, 5, '2022-09-05 02:32:43', '2022-09-04 19:32:43');

-- ----------------------------
-- Table structure for m_harga
-- ----------------------------
DROP TABLE IF EXISTS `m_harga`;
CREATE TABLE `m_harga`  (
  `id_harga` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_item` bigint(11) NULL DEFAULT NULL,
  `harga` bigint(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_harga`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_harga
-- ----------------------------
INSERT INTO `m_harga` VALUES (1, 1, 100000, NULL, NULL);
INSERT INTO `m_harga` VALUES (2, 2, 20000, NULL, NULL);
INSERT INTO `m_harga` VALUES (3, 3, 25000, NULL, NULL);
INSERT INTO `m_harga` VALUES (4, 4, 10000, NULL, NULL);
INSERT INTO `m_harga` VALUES (5, 5, 200000, NULL, NULL);
INSERT INTO `m_harga` VALUES (6, 6, 55000, NULL, NULL);

-- ----------------------------
-- Table structure for m_item
-- ----------------------------
DROP TABLE IF EXISTS `m_item`;
CREATE TABLE `m_item`  (
  `id_item` bigint(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_item`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_item
-- ----------------------------
INSERT INTO `m_item` VALUES (1, 'Besi Beton', NULL, NULL);
INSERT INTO `m_item` VALUES (2, 'Kayu Balok', NULL, NULL);
INSERT INTO `m_item` VALUES (3, 'Keramik', NULL, NULL);
INSERT INTO `m_item` VALUES (4, 'Batu Bata', NULL, NULL);
INSERT INTO `m_item` VALUES (5, 'Cat Kayu', NULL, NULL);
INSERT INTO `m_item` VALUES (6, 'Cat Tembok', NULL, NULL);

-- ----------------------------
-- Table structure for m_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `m_pembayaran`;
CREATE TABLE `m_pembayaran`  (
  `id_pembayaran` bigint(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `transaksi_kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total_transaksi` bigint(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_pembayaran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_pembayaran
-- ----------------------------
INSERT INTO `m_pembayaran` VALUES (36, 'Fulan', 'INV/IX/2022/001', 260000, '2022-09-04 18:09:46', '2022-09-04 18:09:46');
INSERT INTO `m_pembayaran` VALUES (37, 'Rachman', 'INV/IX/2022/037', 80000, '2022-09-04 18:10:09', '2022-09-04 18:10:09');
INSERT INTO `m_pembayaran` VALUES (38, 'Kholil', 'INV/IX/2022/038', 465000, '2022-09-04 18:10:42', '2022-09-04 18:10:42');
INSERT INTO `m_pembayaran` VALUES (39, 'Kholil', 'INV/IX/2022/039', 200000, '2022-09-04 18:17:43', '2022-09-04 18:17:43');
INSERT INTO `m_pembayaran` VALUES (40, 'Susi', 'INV/IX/2022/040', 1000000, '2022-09-04 19:30:06', '2022-09-04 19:30:06');
INSERT INTO `m_pembayaran` VALUES (41, 'Coba', 'INV/IX/2022/041', 1000000, '2022-09-04 19:30:49', '2022-09-04 19:30:49');
INSERT INTO `m_pembayaran` VALUES (42, 'Alahmak', 'INV/IX/2022/042', 2000000, '2022-09-04 19:32:24', '2022-09-04 19:32:24');
INSERT INTO `m_pembayaran` VALUES (43, 'Rico', 'INV/IX/2022/043', 50000, '2022-09-04 19:32:43', '2022-09-04 19:32:43');

-- ----------------------------
-- Table structure for m_privilege
-- ----------------------------
DROP TABLE IF EXISTS `m_privilege`;
CREATE TABLE `m_privilege`  (
  `id_privilege` bigint(11) NOT NULL AUTO_INCREMENT,
  `nama_hak_akses` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_privilege`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_privilege
-- ----------------------------
INSERT INTO `m_privilege` VALUES (1, 'm_item', NULL, NULL);

-- ----------------------------
-- Table structure for m_role
-- ----------------------------
DROP TABLE IF EXISTS `m_role`;
CREATE TABLE `m_role`  (
  `id_role` bigint(11) NULL DEFAULT NULL,
  `id_privilege` bigint(11) NULL DEFAULT NULL,
  `jenis` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_role
-- ----------------------------
INSERT INTO `m_role` VALUES (1, 1, 'kasir', NULL, NULL);
INSERT INTO `m_role` VALUES (2, 2, 'admin', NULL, NULL);
INSERT INTO `m_role` VALUES (3, 3, 'superadmin', NULL, NULL);

-- ----------------------------
-- Table structure for m_uom
-- ----------------------------
DROP TABLE IF EXISTS `m_uom`;
CREATE TABLE `m_uom`  (
  `id_uom` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_item` bigint(11) NULL DEFAULT NULL,
  `qty` int(9) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_uom`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_uom
-- ----------------------------
INSERT INTO `m_uom` VALUES (1, 1, 30, '2022-09-05 02:15:46', '2022-09-05 02:15:46');
INSERT INTO `m_uom` VALUES (2, 2, 50, '2022-09-05 02:15:52', '2022-09-05 02:15:52');
INSERT INTO `m_uom` VALUES (3, 3, 10, '2022-09-05 02:15:55', '2022-09-05 02:15:55');
INSERT INTO `m_uom` VALUES (4, 4, 0, '2022-09-05 02:32:43', '2022-09-04 19:32:43');
INSERT INTO `m_uom` VALUES (5, 5, 45, '2022-09-05 02:32:24', '2022-09-04 19:32:24');
INSERT INTO `m_uom` VALUES (6, 6, 15, '2022-09-05 02:23:54', '2022-09-05 02:23:54');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user`  (
  `id_user` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_role` bigint(11) NULL DEFAULT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES (1, 1, 'Admin SIMS', 'admin', '$2y$10$JbZ1u1lqmGPCR6eHnKvQXuBrG/HyDeqpV/p0iD3SZ0rXN2jBVZQjm', '2022-09-05 01:39:32', '2022-09-05 01:39:32');
INSERT INTO `m_user` VALUES (2, 2, 'Kasir SIMS', 'kasir', '$2y$10$yOIBoLi5fmSU2TCg2R/F0OzoLqRopsihQKDF6jN0GN8Q77mqqFai.', '2022-09-05 01:39:34', '2022-09-05 01:39:34');
INSERT INTO `m_user` VALUES (4, 3, 'Super Admin SIMS', 's_admin', '$2y$10$7sdVD3Hhqkc7GoMYR35kdeQuWZwXVY9m/Vz83khw6Qp08XXiohSVC', '2022-09-04 18:39:53', '2022-09-04 18:39:53');

SET FOREIGN_KEY_CHECKS = 1;
