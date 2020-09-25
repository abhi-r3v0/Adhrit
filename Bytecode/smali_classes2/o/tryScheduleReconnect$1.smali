.class final Lo/tryScheduleReconnect$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getIdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tryScheduleReconnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getIdManager<",
        "Ljava/net/ProxySelector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Ljava/lang/Object;
    .locals 1

    .line 1148
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    return-object v0
.end method
