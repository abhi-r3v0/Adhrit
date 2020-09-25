.class public final Lo/OrderStatusResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NetBankingInstrumentJsonAdapter;


# instance fields
.field private final extraCallback:Lo/ResultJsonAdapter$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter$onNavigationEvent;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/OrderStatusResponse;->extraCallback:Lo/ResultJsonAdapter$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/ResultJsonAdapter;
    .locals 0

    .line 36
    iget-object p1, p0, Lo/OrderStatusResponse;->extraCallback:Lo/ResultJsonAdapter$onNavigationEvent;

    invoke-interface {p1}, Lo/ResultJsonAdapter$onNavigationEvent;->ICustomTabsCallback()Lo/ResultJsonAdapter;

    move-result-object p1

    return-object p1
.end method
