.class final Lo/saveData$extraCallback;
.super Lo/saveData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field public final describeContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/saveData$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final isBrowsable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/saveData$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final toString:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lo/saveData;-><init>(I)V

    .line 430
    iput-wide p2, p0, Lo/saveData$extraCallback;->toString:J

    .line 431
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    .line 432
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;
    .locals 4

    .line 463
    iget-object v0, p0, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 465
    iget-object v2, p0, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/saveData$onNavigationEvent;

    .line 466
    iget v3, v2, Lo/saveData;->writeToParcel:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onMessageChannelReady(Lo/saveData$extraCallback;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onMessageChannelReady(Lo/saveData$onNavigationEvent;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage(I)Lo/saveData$extraCallback;
    .locals 4

    .line 483
    iget-object v0, p0, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 485
    iget-object v2, p0, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/saveData$extraCallback;

    .line 486
    iget v3, v2, Lo/saveData;->writeToParcel:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lo/saveData;->writeToParcel:I

    invoke-static {v1}, Lo/saveData$extraCallback;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/saveData$extraCallback;->isBrowsable:Ljava/util/List;

    .line 521
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/saveData$extraCallback;->describeContents:Ljava/util/List;

    .line 522
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
