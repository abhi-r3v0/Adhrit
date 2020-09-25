.class public final Lo/onSearchResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSearchResult$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static asBinder:I = 0x1


# instance fields
.field public ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:[Lo/getDescription;

.field asInterface:Lo/onSearchResult$ICustomTabsCallback;

.field public extraCallback:F

.field onMessageChannelReady:[F

.field public onNavigationEvent:I

.field onPostMessage:I

.field public onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/onSearchResult$ICustomTabsCallback;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lo/onSearchResult;->onNavigationEvent:I

    .line 50
    iput v0, p0, Lo/onSearchResult;->onPostMessage:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lo/onSearchResult;->ICustomTabsCallback:I

    const/4 v1, 0x7

    new-array v1, v1, [F

    .line 55
    iput-object v1, p0, Lo/onSearchResult;->onMessageChannelReady:[F

    const/16 v1, 0x8

    new-array v1, v1, [Lo/getDescription;

    .line 58
    iput-object v1, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    .line 59
    iput v0, p0, Lo/onSearchResult;->onTransact:I

    .line 60
    iput v0, p0, Lo/onSearchResult;->onRelationshipValidationResult:I

    .line 120
    iput-object p1, p0, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    return-void
.end method

.method static ICustomTabsCallback()V
    .locals 1

    .line 89
    sget v0, Lo/onSearchResult;->asBinder:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo/onSearchResult;->asBinder:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getDescription;)V
    .locals 5

    .line 189
    iget v0, p0, Lo/onSearchResult;->onTransact:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 191
    iget-object v3, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    aget-object v3, v3, v2

    iget-object v3, v3, Lo/getDescription;->onPostMessage:Lo/getFlags;

    iget-object v4, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lo/getFlags;->onNavigationEvent(Lo/getDescription;Lo/getDescription;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iput v1, p0, Lo/onSearchResult;->onTransact:I

    return-void
.end method

.method public final extraCallback(Lo/getDescription;)V
    .locals 3

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget v1, p0, Lo/onSearchResult;->onTransact:I

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 169
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getDescription;

    iput-object v0, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    .line 171
    :cond_2
    iget-object v0, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    iget v1, p0, Lo/onSearchResult;->onTransact:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 172
    iput v1, p0, Lo/onSearchResult;->onTransact:I

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 198
    sget-object v0, Lo/onSearchResult$ICustomTabsCallback;->onMessageChannelReady:Lo/onSearchResult$ICustomTabsCallback;

    iput-object v0, p0, Lo/onSearchResult;->asInterface:Lo/onSearchResult$ICustomTabsCallback;

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lo/onSearchResult;->ICustomTabsCallback:I

    const/4 v1, -0x1

    .line 200
    iput v1, p0, Lo/onSearchResult;->onNavigationEvent:I

    .line 201
    iput v1, p0, Lo/onSearchResult;->onPostMessage:I

    const/4 v1, 0x0

    .line 202
    iput v1, p0, Lo/onSearchResult;->extraCallback:F

    .line 203
    iput v0, p0, Lo/onSearchResult;->onTransact:I

    .line 204
    iput v0, p0, Lo/onSearchResult;->onRelationshipValidationResult:I

    return-void
.end method

.method public final onMessageChannelReady(Lo/getDescription;)V
    .locals 5

    .line 176
    iget v0, p0, Lo/onSearchResult;->onTransact:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 178
    iget-object v3, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    :goto_1
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_0

    .line 180
    iget-object p1, p0, Lo/onSearchResult;->ICustomTabsCallback$Stub:[Lo/getDescription;

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_0
    iget p1, p0, Lo/onSearchResult;->onTransact:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/onSearchResult;->onTransact:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
