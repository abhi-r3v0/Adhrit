.class final Lo/CompositeCreateReportSpiCall$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CompositeCreateReportSpiCall;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic onNavigationEvent:Lo/CompositeCreateReportSpiCall;


# direct methods
.method constructor <init>(Lo/CompositeCreateReportSpiCall;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lo/CompositeCreateReportSpiCall$4;->onNavigationEvent:Lo/CompositeCreateReportSpiCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iget-object p1, p0, Lo/CompositeCreateReportSpiCall$4;->onNavigationEvent:Lo/CompositeCreateReportSpiCall;

    .line 1047
    iget-object p1, p1, Lo/CompositeCreateReportSpiCall;->extraCallback:Lo/stringToByteString;

    .line 166
    invoke-interface {p1}, Lo/stringToByteString;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lo/CompositeCreateReportSpiCall$4;->ICustomTabsCallback:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall$4;->ICustomTabsCallback:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1175
    iget-object v0, p0, Lo/CompositeCreateReportSpiCall$4;->ICustomTabsCallback:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
