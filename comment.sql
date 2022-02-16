-- ALTER TABLE `member` ADD FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

-- ALTER TABLE `project` ADD FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

-- ALTER TABLE `work_room` ADD FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

-- ALTER TABLE `work_room` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `carbinet` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `training_sercurity` ADD FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

-- ALTER TABLE `training_sercurity` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `device` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `member` ADD FOREIGN KEY (`work_room_id`) REFERENCES `work_room` (`id`);

-- ALTER TABLE `project` ADD FOREIGN KEY (`work_room_id`) REFERENCES `work_room` (`id`);

-- ALTER TABLE `member_project` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `member_project` ADD FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

-- ALTER TABLE `work_room_center` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `work_room_center` ADD FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

-- ALTER TABLE `work_room_center` ADD FOREIGN KEY (`work_room_id`) REFERENCES `work_room` (`id`);

---- sercurity-3
-- ALTER TABLE `member` ADD FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

-- ALTER TABLE `project` ADD FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

-- ALTER TABLE `project` ADD FOREIGN KEY (`work_room_id`) REFERENCES `work_room` (`id`);

-- ALTER TABLE `member_project` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `member_project` ADD FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

-- ALTER TABLE `training` ADD FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

-- ALTER TABLE `carbinet` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `device` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

-- ALTER TABLE `training_room` ADD FOREIGN KEY (`training_id`) REFERENCES `training` (`id`);

-- ALTER TABLE `training_room` ADD FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);