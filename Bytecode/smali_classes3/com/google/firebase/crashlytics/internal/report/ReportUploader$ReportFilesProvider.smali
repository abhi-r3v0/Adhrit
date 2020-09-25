.class public interface abstract Lcom/google/firebase/crashlytics/internal/report/ReportUploader$ReportFilesProvider;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/report/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReportFilesProvider"
.end annotation


# virtual methods
.method public abstract getCompleteSessionFiles()[Ljava/io/File;
.end method

.method public abstract getNativeReportFiles()[Ljava/io/File;
.end method
