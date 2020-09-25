.class final Lo/getCompoundHash$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/moveRedLeft$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;-><init>(Lo/isRed;Lo/fixUp;Lo/shortCircuitingInOrderTraversal$onPostMessage;Lo/onDataUpdate;Lo/getIdManager;Ljava/util/List;Lo/sendUnauth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/sendUnauth;


# direct methods
.method constructor <init>(Lo/sendUnauth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 662
    iput-object p1, p0, Lo/getCompoundHash$onNavigationEvent;->ICustomTabsCallback:Lo/sendUnauth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/moveRedLeft;
    .locals 2

    .line 665
    new-instance v0, Lo/moveRedLeft;

    iget-object v1, p0, Lo/getCompoundHash$onNavigationEvent;->ICustomTabsCallback:Lo/sendUnauth;

    invoke-direct {v0, v1}, Lo/moveRedLeft;-><init>(Lo/sendUnauth;)V

    return-object v0
.end method
