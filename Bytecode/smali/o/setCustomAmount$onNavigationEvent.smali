.class public Lo/setCustomAmount$onNavigationEvent;
.super Lo/setCustomAmount$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCustomAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/setCustomAmount$ICustomTabsCallback$Stub;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setCustomAmount$extraCallback<",
        "TT;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setCustomAmount$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getIfsc;Lo/TransactionJsonAdapter;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lo/getMinDue;",
            "TO;",
            "Lo/getIfsc;",
            "Lo/TransactionJsonAdapter;",
            ")TT;"
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "buildClient must be implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lo/getMinDue;",
            "TO;",
            "Lo/getPaymentMode$onPostMessage;",
            "Lo/getPaymentMode$ICustomTabsCallback;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual/range {p0 .. p6}, Lo/setCustomAmount$onNavigationEvent;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getIfsc;Lo/TransactionJsonAdapter;)Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object p1

    return-object p1
.end method
