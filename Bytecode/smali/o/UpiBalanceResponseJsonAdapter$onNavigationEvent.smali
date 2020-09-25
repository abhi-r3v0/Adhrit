.class final Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:[I

.field public final onMessageChannelReady:[I

.field public final onNavigationEvent:I

.field public final onPostMessage:[I


# direct methods
.method public constructor <init>(I[I[I[I)V
    .locals 0

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput p1, p0, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onNavigationEvent:I

    .line 999
    iput-object p2, p0, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onPostMessage:[I

    .line 1000
    iput-object p3, p0, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->ICustomTabsCallback:[I

    .line 1001
    iput-object p4, p0, Lo/UpiBalanceResponseJsonAdapter$onNavigationEvent;->onMessageChannelReady:[I

    return-void
.end method
