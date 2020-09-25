.class public final Lo/ForwardingListener$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPopupBackgroundDrawable$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPopupBackgroundDrawable$ICustomTabsCallback<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Lo/setPopupBackgroundDrawable;
    .locals 1

    .line 30
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1035
    new-instance v0, Lo/ForwardingListener;

    invoke-direct {v0, p1}, Lo/ForwardingListener;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method
