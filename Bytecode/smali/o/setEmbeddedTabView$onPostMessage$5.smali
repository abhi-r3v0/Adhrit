.class final Lo/setEmbeddedTabView$onPostMessage$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setEmbeddedTabView$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEmbeddedTabView$onPostMessage;->extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setEmbeddedTabView$ICustomTabsCallback<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 112
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final synthetic extraCallback([B)Ljava/lang/Object;
    .locals 0

    .line 1107
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
