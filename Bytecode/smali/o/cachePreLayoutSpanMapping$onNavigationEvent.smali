.class public final Lo/cachePreLayoutSpanMapping$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AFDeepLinkManager$5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cachePreLayoutSpanMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getByPosition;)Lo/containsPosition;
    .locals 4

    .line 1019
    new-instance v0, Lo/Recreator;

    .line 1079
    iget v1, p1, Lo/getByPosition;->onNavigationEvent:I

    .line 1087
    iget-object v2, p1, Lo/getByPosition;->extraCallback:Lo/setPivotX;

    .line 2083
    iget-object v3, p1, Lo/getByPosition;->onMessageChannelReady:Ljava/lang/String;

    .line 2107
    iget-object p1, p1, Lo/getByPosition;->asBinder:Lo/recycleTile;

    .line 1023
    invoke-direct {v0, v1, v2, v3, p1}, Lo/Recreator;-><init>(ILo/setPivotX;Ljava/lang/String;Lo/recycleTile;)V

    return-object v0
.end method
