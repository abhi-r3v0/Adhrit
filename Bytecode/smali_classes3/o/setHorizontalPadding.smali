.class public final Lo/setHorizontalPadding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field private final synthetic onPostMessage:Lo/setShowBuffering;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lo/setShowBuffering;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setHorizontalPadding;->onMessageChannelReady:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lo/setHorizontalPadding;->onPostMessage:Lo/setShowBuffering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setHorizontalPadding;->onMessageChannelReady:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 3
    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    iget-object v1, p0, Lo/setHorizontalPadding;->onPostMessage:Lo/setShowBuffering;

    iget-object v2, p0, Lo/setHorizontalPadding;->onMessageChannelReady:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->onNavigationEvent:Lo/setCheckedIcon;

    .line 4
    invoke-virtual {v2}, Lo/setCheckedIcon;->IPostMessageService$Stub$Proxy()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/setHelperTextEnabled;->onMessageChannelReady(Lo/setShowBuffering;Z)V

    return-void
.end method
