.class final Lo/emptyMap$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPredecessorKey$onTransact;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/emptyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getPredecessorKey$onTransact<",
        "Lo/emptyMap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 562
    invoke-direct {p0}, Lo/emptyMap$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback([B)Ljava/lang/Object;
    .locals 0

    .line 1570
    invoke-static {p1}, Lo/emptyMap;->onNavigationEvent([B)Lo/emptyMap;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)[B
    .locals 0

    .line 562
    check-cast p1, Lo/emptyMap;

    .line 3492
    iget-object p1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 2565
    invoke-static {p1}, Lo/emptyMap$onPostMessage;->extraCallback(Lo/emptyMap$onPostMessage;)[B

    move-result-object p1

    return-object p1
.end method
