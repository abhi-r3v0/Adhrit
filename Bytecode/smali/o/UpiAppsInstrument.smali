.class final Lo/UpiAppsInstrument;
.super Lo/SimResponseJsonAdapter;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SimResponseJsonAdapter;",
        "Ljava/lang/Comparable<",
        "Lo/UpiAppsInstrument;",
        ">;"
    }
.end annotation


# instance fields
.field public final mayLaunchUrl:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p10}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 55
    iput p11, p0, Lo/UpiAppsInstrument;->mayLaunchUrl:I

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lo/UpiAppsInstrument;

    invoke-virtual {p0, p1}, Lo/UpiAppsInstrument;->onNavigationEvent(Lo/UpiAppsInstrument;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/UpiAppsInstrument;)I
    .locals 1

    .line 60
    iget p1, p1, Lo/UpiAppsInstrument;->mayLaunchUrl:I

    iget v0, p0, Lo/UpiAppsInstrument;->mayLaunchUrl:I

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
