.class final Lo/setVerticalOffset$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setVerticalOffset$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setVerticalOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setVerticalOffset$onMessageChannelReady<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/util/List;

    .line 1098
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
