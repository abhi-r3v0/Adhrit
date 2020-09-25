.class public final Lo/restoreViewState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ICustomTabsCallback:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;


# direct methods
.method public constructor <init>(Lcom/dreamplug/deviceattributes/DeviceFingerPrint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/restoreViewState;->ICustomTabsCallback:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/restoreViewState;->ICustomTabsCallback:Lcom/dreamplug/deviceattributes/DeviceFingerPrint;

    invoke-static {v0}, Lcom/dreamplug/deviceattributes/DeviceFingerPrint;->onPostMessage(Lcom/dreamplug/deviceattributes/DeviceFingerPrint;)V

    return-void
.end method
