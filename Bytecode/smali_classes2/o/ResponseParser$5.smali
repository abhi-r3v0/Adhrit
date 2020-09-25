.class final Lo/ResponseParser$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onReportSendComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onReportSendComplete<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Ljava/lang/Boolean;)Z
    .locals 0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/ResponseParser$5;->evaluate(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
