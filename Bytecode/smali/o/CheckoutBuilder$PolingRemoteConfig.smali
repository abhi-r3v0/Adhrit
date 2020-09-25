.class public interface abstract Lo/CheckoutBuilder$PolingRemoteConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/CheckoutBuilder$PolingRemoteConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lo/getExpiryTimeStamp;

    invoke-direct {v0}, Lo/getExpiryTimeStamp;-><init>()V

    sput-object v0, Lo/CheckoutBuilder$PolingRemoteConfig;->onPostMessage:Lo/CheckoutBuilder$PolingRemoteConfig;

    return-void
.end method


# virtual methods
.method public abstract extraCallback()J
.end method

.method public abstract onMessageChannelReady(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lo/EncoderDecoder$RDSException;
.end method

.method public abstract onNavigationEvent()J
.end method
