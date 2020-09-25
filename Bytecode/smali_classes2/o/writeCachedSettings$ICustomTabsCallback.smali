.class public final Lo/writeCachedSettings$ICustomTabsCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeCachedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field public static final action0:I = 0x7f0b003d

.field public static final action_container:I = 0x7f0b0046

.field public static final action_divider:I = 0x7f0b0048

.field public static final action_image:I = 0x7f0b0049

.field public static final action_text:I = 0x7f0b004f

.field public static final actions:I = 0x7f0b0050

.field public static final adjust_height:I = 0x7f0b0069

.field public static final adjust_width:I = 0x7f0b006a

.field public static final async:I = 0x7f0b009b

.field public static final auto:I = 0x7f0b009e

.field public static final blocking:I = 0x7f0b00e6

.field public static final cancel_action:I = 0x7f0b013f

.field public static final chronometer:I = 0x7f0b01ba

.field public static final com_mixpanel_android_button_exit_wrapper:I = 0x7f0b01df

.field public static final com_mixpanel_android_image_close:I = 0x7f0b01e0

.field public static final com_mixpanel_android_notification_bottom_wrapper:I = 0x7f0b01e1

.field public static final com_mixpanel_android_notification_button:I = 0x7f0b01e2

.field public static final com_mixpanel_android_notification_gradient:I = 0x7f0b01e3

.field public static final com_mixpanel_android_notification_image:I = 0x7f0b01e4

.field public static final com_mixpanel_android_notification_second_button:I = 0x7f0b01e5

.field public static final com_mixpanel_android_notification_subtext:I = 0x7f0b01e6

.field public static final com_mixpanel_android_notification_title:I = 0x7f0b01e7

.field public static final dark:I = 0x7f0b025b

.field public static final end_padder:I = 0x7f0b02d8

.field public static final forever:I = 0x7f0b0360

.field public static final icon:I = 0x7f0b043d

.field public static final icon_group:I = 0x7f0b0449

.field public static final icon_only:I = 0x7f0b044a

.field public static final info:I = 0x7f0b0465

.field public static final italic:I = 0x7f0b0499

.field public static final light:I = 0x7f0b04ea

.field public static final line1:I = 0x7f0b04f1

.field public static final line3:I = 0x7f0b04f2

.field public static final media_actions:I = 0x7f0b055a

.field public static final none:I = 0x7f0b05d4

.field public static final normal:I = 0x7f0b05d5

.field public static final notification_background:I = 0x7f0b05e1

.field public static final notification_main_column:I = 0x7f0b05e2

.field public static final notification_main_column_container:I = 0x7f0b05e3

.field public static final right_icon:I = 0x7f0b0702

.field public static final right_side:I = 0x7f0b0705

.field public static final standard:I = 0x7f0b07fc

.field public static final status_bar_latest_event_content:I = 0x7f0b080e

.field public static final text:I = 0x7f0b0879

.field public static final text2:I = 0x7f0b087d

.field public static final time:I = 0x7f0b08ae

.field public static final title:I = 0x7f0b08b5

.field public static final wide:I = 0x7f0b09bd


# instance fields
.field private final arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReportPersistence$$Lambda$4;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/writeCachedSettings$ICustomTabsCallback;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReportPersistence$$Lambda$4;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/writeCachedSettings$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/writeCachedSettings$ICustomTabsCallback;-><init>(Lo/CrashlyticsReportPersistence$$Lambda$4;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/writeCachedSettings$ICustomTabsCallback;->arg$1:Lo/CrashlyticsReportPersistence$$Lambda$4;

    invoke-static {v0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->access$lambda$0(Lo/CrashlyticsReportPersistence$$Lambda$4;Lcom/google/android/gms/tasks/Task;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
