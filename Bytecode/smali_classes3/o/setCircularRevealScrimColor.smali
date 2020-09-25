.class public final Lo/setCircularRevealScrimColor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Lo/setShowBuffering;

.field private final synthetic onPostMessage:Lo/zzir;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;Lo/zzir;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCircularRevealScrimColor;->ICustomTabsCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lo/setCircularRevealScrimColor;->onNavigationEvent:Lo/setShowBuffering;

    iput-object p3, p0, Lo/setCircularRevealScrimColor;->onPostMessage:Lo/zzir;

    iput-object p4, p0, Lo/setCircularRevealScrimColor;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setCircularRevealScrimColor;->ICustomTabsCallback:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    iget-object v1, p0, Lo/setCircularRevealScrimColor;->onNavigationEvent:Lo/setShowBuffering;

    iget-object v2, p0, Lo/setCircularRevealScrimColor;->onPostMessage:Lo/zzir;

    iget-object v3, p0, Lo/setCircularRevealScrimColor;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lo/setChipSpacingResource;->onNavigationEvent(Lo/setShowBuffering;Lo/zzir;Ljava/lang/String;)V

    return-void
.end method
