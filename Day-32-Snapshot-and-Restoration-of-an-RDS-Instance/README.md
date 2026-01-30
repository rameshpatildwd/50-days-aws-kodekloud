# Day 32: Snapshot and Restoration of an RDS Instance

## Task / Requirement
The Nautilus Development Team is preparing for a major update to their database infrastructure. To ensure a smooth transition and to safeguard data, the team has requested the DevOps team to take a snapshot of the current RDS instance and restore it to a new instance. This process is crucial for testing and validation purposes before the update is rolled out to the production environment. The snapshot will serve as a backup, and the new instance will be used to verify that the backup process works correctly and that the application can function seamlessly with the restored data.

---

## Steps Performed
1. Verified that the **xfusion-rds** RDS instance was in the **Available** state before initiating the snapshot process.
2. Created a **manual snapshot** of the RDS instance and named it **xfusion-snapshot**.
3. Restored the snapshot to a new RDS instance named **xfusion-snapshot-restore**.
4. Configured the restored RDS instance with the required **instance class (db.t3.micro)** during the restore process.
5. Monitored the restoration activity until the new RDS instance reached the **Available** state.
6. Verified that the restored RDS instance was successfully created and ready for testing.

---

## Expected Outcome
- Snapshot **xfusion-snapshot** is successfully created from the source RDS instance.
- A new RDS instance **xfusion-snapshot-restore** is restored from the snapshot.
- The restored instance uses the **db.t3.micro** instance class.
- The new RDS instance is in the **Available** state.
- The source RDS instance remains unaffected.

---

## Verification

### RDS Snapshot Creation
![RDS Snapshot Creation](/Day-32-Snapshot-and-Restoration-of-an-RDS-Instance/rds-snapshot.png)

---

### RDS Snapshot Restoration
![RDS Snapshot Restoration](/Day-32-Snapshot-and-Restoration-of-an-RDS-Instance/rds-restore.png)

---

## Key Learnings
- RDS snapshots enable safe **backup and recovery** of database instances.
- Snapshots can be restored to a **new instance** for testing without impacting production.
- Instance class can be modified during restore to optimize **cost for non-production environments**.
- Snapshot restoration is a standard practice for **disaster recovery and pre-production validation**.
