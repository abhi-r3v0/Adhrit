.class public final Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getId$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/deviceattributes/LocationFingerPrint;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;


# direct methods
.method constructor <init>(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;->onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;->onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-static {v0}, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->access$000(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)Lo/setArguments;

    move-result-object v0

    invoke-interface {v0}, Lo/setArguments;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;->onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-static {v0}, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->access$200(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)Landroid/content/Context;

    move-result-object v1

    .line 1000
    new-instance v2, Lo/zzad;

    invoke-direct {v2, v1}, Lo/zzad;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {v0, v2}, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->access$102(Lcom/dreamplug/deviceattributes/LocationFingerPrint;Lo/zzad;)Lo/zzad;

    .line 41
    iget-object v0, p0, Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;->onPostMessage:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-static {v0}, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->access$100(Lcom/dreamplug/deviceattributes/LocationFingerPrint;)Lo/zzad;

    move-result-object v0

    .line 2000
    new-instance v1, Lo/zzmq;

    invoke-direct {v1, v0}, Lo/zzmq;-><init>(Lo/zzad;)V

    invoke-virtual {v0, v1}, Lo/setPaymentDueDateWeaklyTyped;->doRead(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 41
    new-instance v1, Lo/isStateSaved;

    invoke-direct {v1, p0}, Lo/isStateSaved;-><init>(Lcom/dreamplug/deviceattributes/LocationFingerPrint$5;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
