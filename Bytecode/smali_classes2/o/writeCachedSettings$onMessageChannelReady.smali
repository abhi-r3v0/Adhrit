.class public final Lo/writeCachedSettings$onMessageChannelReady;
.super Ljava/lang/Object;

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeCachedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final com_mixpanel_android_activity_notification_full:I = 0x7f0e004d

.field public static final com_mixpanel_android_activity_notification_mini:I = 0x7f0e004e

.field public static final notification_action:I = 0x7f0e02d1

.field public static final notification_action_tombstone:I = 0x7f0e02d2

.field public static final notification_media_action:I = 0x7f0e02d3

.field public static final notification_media_cancel_action:I = 0x7f0e02d4

.field public static final notification_template_big_media:I = 0x7f0e02d5

.field public static final notification_template_big_media_custom:I = 0x7f0e02d6

.field public static final notification_template_big_media_narrow:I = 0x7f0e02d7

.field public static final notification_template_big_media_narrow_custom:I = 0x7f0e02d8

.field public static final notification_template_custom_big:I = 0x7f0e02d9

.field public static final notification_template_icon_group:I = 0x7f0e02da

.field public static final notification_template_lines_media:I = 0x7f0e02db

.field public static final notification_template_media:I = 0x7f0e02dc

.field public static final notification_template_media_custom:I = 0x7f0e02dd

.field public static final notification_template_part_chronometer:I = 0x7f0e02de

.field public static final notification_template_part_time:I = 0x7f0e02df


# instance fields
.field private final arg$1:Lcom/google/android/gms/tasks/Task;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/writeCachedSettings$onMessageChannelReady;->arg$1:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/gms/tasks/Task;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/writeCachedSettings$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/writeCachedSettings$onMessageChannelReady;-><init>(Lcom/google/android/gms/tasks/Task;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/writeCachedSettings$onMessageChannelReady;->arg$1:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->lambda$ensureInitialized$0(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lo/getFilesDirPath;

    move-result-object p1

    return-object p1
.end method
