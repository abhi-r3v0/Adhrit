.class public final Lo/AutoValue_CrashlyticsReport_Session_Device;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_Session_Device$ICustomTabsCallback;,
        Lo/AutoValue_CrashlyticsReport_Session_Device$onNavigationEvent;,
        Lo/AutoValue_CrashlyticsReport_Session_Device$extraCallback;,
        Lo/AutoValue_CrashlyticsReport_Session_Device$onPostMessage;,
        Lo/AutoValue_CrashlyticsReport_Session_Device$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/BinaryImagesConverter$FileIdStrategy;

.field private final arg$2:Landroid/content/Intent;

.field private final arg$3:Lo/removeBackgroundStateChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/BinaryImagesConverter$FileIdStrategy;Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device;->arg$1:Lo/BinaryImagesConverter$FileIdStrategy;

    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device;->arg$2:Landroid/content/Intent;

    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Device;->arg$3:Lo/removeBackgroundStateChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Device;->arg$1:Lo/BinaryImagesConverter$FileIdStrategy;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Device;->arg$2:Landroid/content/Intent;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Device;->arg$3:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v0, v1, v2}, Lo/BinaryImagesConverter$FileIdStrategy;->lambda$processIntent$0$EnhancedIntentService(Landroid/content/Intent;Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method
