.class public final Lo/setIconStartPaddingResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic extraCallback:Z

.field private final synthetic onMessageChannelReady:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Lo/setShowBuffering;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setIconStartPaddingResource;->onMessageChannelReady:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lo/setIconStartPaddingResource;->onPostMessage:Lo/setShowBuffering;

    iput-object p3, p0, Lo/setIconStartPaddingResource;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/setIconStartPaddingResource;->ICustomTabsCallback:Ljava/lang/String;

    iput-boolean p5, p0, Lo/setIconStartPaddingResource;->extraCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lo/setIconStartPaddingResource;->onMessageChannelReady:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 3
    invoke-virtual {v0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    iget-object v1, p0, Lo/setIconStartPaddingResource;->onPostMessage:Lo/setShowBuffering;

    iget-object v2, p0, Lo/setIconStartPaddingResource;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p0, Lo/setIconStartPaddingResource;->ICustomTabsCallback:Ljava/lang/String;

    iget-boolean v4, p0, Lo/setIconStartPaddingResource;->extraCallback:Z

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/setChipSpacingResource;->onPostMessage(Lo/setShowBuffering;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
