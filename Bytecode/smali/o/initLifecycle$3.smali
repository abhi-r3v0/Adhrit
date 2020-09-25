.class public final Lo/initLifecycle$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/initLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/content/Context;

.field private synthetic onMessageChannelReady:Lo/initLifecycle;


# direct methods
.method public constructor <init>(Lo/initLifecycle;Landroid/content/Context;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/initLifecycle$3;->onMessageChannelReady:Lo/initLifecycle;

    iput-object p2, p0, Lo/initLifecycle$3;->extraCallback:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 116
    iget-object v0, p0, Lo/initLifecycle$3;->onMessageChannelReady:Lo/initLifecycle;

    iget-object v1, p0, Lo/initLifecycle$3;->extraCallback:Landroid/content/Context;

    .line 1123
    new-instance v2, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    new-instance v3, Lo/isInBackStack;

    invoke-direct {v3, v0}, Lo/isInBackStack;-><init>(Lo/initLifecycle;)V

    invoke-direct {v2, v1, v3}, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;-><init>(Landroid/content/Context;Lo/setArguments;)V

    iput-object v2, v0, Lo/initLifecycle;->onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    .line 1128
    new-instance v2, Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    new-instance v3, Lo/getViewLifecycleOwnerLiveData;

    invoke-direct {v3, v0}, Lo/getViewLifecycleOwnerLiveData;-><init>(Lo/initLifecycle;)V

    invoke-direct {v2, v1, v3}, Lcom/dreamplug/deviceattributes/LocationFingerPrint;-><init>(Landroid/content/Context;Lo/setArguments;)V

    iput-object v2, v0, Lo/initLifecycle;->onMessageChannelReady:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    .line 1133
    new-instance v2, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;

    new-instance v3, Lo/instantiate;

    invoke-direct {v3, v0}, Lo/instantiate;-><init>(Lo/initLifecycle;)V

    invoke-direct {v2, v1, v3}, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;-><init>(Landroid/content/Context;Lo/setArguments;)V

    iput-object v2, v0, Lo/initLifecycle;->onNavigationEvent:Lcom/dreamplug/deviceattributes/CarrierFingerPrint;

    .line 1138
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lo/initLifecycle$1;

    invoke-direct {v2, v0}, Lo/initLifecycle$1;-><init>(Lo/initLifecycle;)V

    const-wide/16 v3, 0x1389

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1145
    iget-object v1, v0, Lo/initLifecycle;->onPostMessage:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    invoke-virtual {v1}, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->init()V

    .line 1146
    iget-object v1, v0, Lo/initLifecycle;->onMessageChannelReady:Lcom/dreamplug/deviceattributes/LocationFingerPrint;

    invoke-virtual {v1}, Lcom/dreamplug/deviceattributes/LocationFingerPrint;->init()V

    .line 1147
    iget-object v0, v0, Lo/initLifecycle;->onNavigationEvent:Lcom/dreamplug/deviceattributes/CarrierFingerPrint;

    invoke-virtual {v0}, Lcom/dreamplug/deviceattributes/CarrierFingerPrint;->init()V

    return-void
.end method
