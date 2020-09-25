.class public Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field callbacks:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 91
    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$1;)V

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;->callbacks:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 4

    .line 96
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 100
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;->callbacks:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;->callbacks:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;

    .line 102
    new-instance v2, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$1;)V

    iput-object v2, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;->callbacks:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;->run()V

    return-void

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0

    throw v1
.end method
