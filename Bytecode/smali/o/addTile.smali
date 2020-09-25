.class public final Lo/addTile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/invalidateSpanInfo;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lo/addTile;-><init>(Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 28
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/addTile;->ICustomTabsCallback:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lo/addTile;->extraCallback:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_0
    instance-of v0, p1, Lo/addTile;

    if-eqz v0, :cond_1

    .line 43
    check-cast p1, Lo/addTile;

    .line 44
    iget-object v0, p0, Lo/addTile;->ICustomTabsCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/addTile;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/addTile;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 51
    iget-object v0, p0, Lo/addTile;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/addTile;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method
