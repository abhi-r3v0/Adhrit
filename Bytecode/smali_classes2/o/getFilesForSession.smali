.class public final Lo/getFilesForSession;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFilesForSession$onPostMessage;,
        Lo/getFilesForSession$ICustomTabsCallback;,
        Lo/getFilesForSession$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lo/getFilesForSession$onPostMessage;

    invoke-direct {v0}, Lo/getFilesForSession$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/getFilesForSession$extraCallback;Landroid/view/View;)Z
    .locals 3

    .line 201
    iget-object v0, p0, Lo/getFilesForSession$extraCallback;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getFilesForSession$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 202
    invoke-static {p1, v0}, Lo/getFilesForSession;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 206
    iget v2, p0, Lo/getFilesForSession$extraCallback;->ICustomTabsCallback:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v2, p0, Lo/getFilesForSession$extraCallback;->ICustomTabsCallback:I

    if-eq v0, v2, :cond_1

    return v1

    .line 210
    :cond_1
    iget-object v0, p0, Lo/getFilesForSession$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/getFilesForSession$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 215
    :cond_2
    iget-object v0, p0, Lo/getFilesForSession$extraCallback;->onRelationshipValidationResult:Ljava/lang/String;

    .line 216
    iget-object p0, p0, Lo/getFilesForSession$extraCallback;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private onMessageChannelReady(Lo/getFilesForSession$extraCallback;Landroid/view/View;I)Landroid/view/View;
    .locals 4

    .line 177
    iget-object v0, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 3269
    iget-object v0, v0, Lo/getFilesForSession$onPostMessage;->extraCallback:[I

    aget v0, v0, p3

    .line 178
    invoke-static {p1, p2}, Lo/getFilesForSession;->ICustomTabsCallback(Lo/getFilesForSession$extraCallback;Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 3273
    iget-object v1, v1, Lo/getFilesForSession$onPostMessage;->extraCallback:[I

    aget v3, v1, p3

    add-int/2addr v3, v2

    aput v3, v1, p3

    .line 180
    iget v1, p1, Lo/getFilesForSession$extraCallback;->extraCallback:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v1, p1, Lo/getFilesForSession$extraCallback;->extraCallback:I

    if-ne v1, v0, :cond_1

    :cond_0
    return-object p2

    .line 185
    :cond_1
    iget v0, p1, Lo/getFilesForSession$extraCallback;->onNavigationEvent:I

    if-ne v0, v2, :cond_3

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 186
    check-cast p2, Landroid/view/ViewGroup;

    .line 187
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 189
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 190
    invoke-direct {p0, p1, v2, p3}, Lo/getFilesForSession;->onMessageChannelReady(Lo/getFilesForSession$extraCallback;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private onMessageChannelReady(Landroid/view/View;Ljava/util/List;Lo/getFilesForSession$ICustomTabsCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;",
            "Lo/getFilesForSession$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p3, p1}, Lo/getFilesForSession$ICustomTabsCallback;->onPostMessage(Landroid/view/View;)V

    return-void

    .line 144
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 2252
    iget-object v1, v0, Lo/getFilesForSession$onPostMessage;->extraCallback:[I

    array-length v1, v1

    iget v0, v0, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string p1, "MixpanelAPI.PathFinder"

    const-string p2, "Path is too deep, will not match"

    .line 150
    invoke-static {p1, p2}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 156
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getFilesForSession$extraCallback;

    .line 157
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 160
    iget-object v4, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 2259
    iget v5, v4, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    .line 2260
    iget v6, v4, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    add-int/2addr v6, v3

    iput v6, v4, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    .line 2261
    iget-object v4, v4, Lo/getFilesForSession$onPostMessage;->extraCallback:[I

    aput v2, v4, v5

    :goto_1
    if-ge v2, v1, :cond_6

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 163
    invoke-direct {p0, v0, v4, v5}, Lo/getFilesForSession;->onMessageChannelReady(Lo/getFilesForSession$extraCallback;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 165
    invoke-direct {p0, v4, p2, p3}, Lo/getFilesForSession;->onMessageChannelReady(Landroid/view/View;Ljava/util/List;Lo/getFilesForSession$ICustomTabsCallback;)V

    .line 167
    :cond_4
    iget v4, v0, Lo/getFilesForSession$extraCallback;->extraCallback:I

    if-ltz v4, :cond_5

    iget-object v4, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 2269
    iget-object v4, v4, Lo/getFilesForSession$onPostMessage;->extraCallback:[I

    aget v4, v4, v5

    .line 167
    iget v6, v0, Lo/getFilesForSession$extraCallback;->extraCallback:I

    if-gt v4, v6, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_6
    iget-object p1, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 2281
    iget p2, p1, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    sub-int/2addr p2, v3

    iput p2, p1, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    .line 2282
    iget p2, p1, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    if-ltz p2, :cond_7

    return-void

    .line 2283
    :cond_7
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p1, p1, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method private static onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 229
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 234
    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 238
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final onPostMessage(Landroid/view/View;Ljava/util/List;Lo/getFilesForSession$ICustomTabsCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;",
            "Lo/getFilesForSession$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 1252
    iget-object v1, v0, Lo/getFilesForSession$onPostMessage;->extraCallback:[I

    array-length v1, v1

    iget v0, v0, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string p1, "MixpanelAPI.PathFinder"

    const-string p2, "There appears to be a concurrency issue in the pathfinding code. Path will not be matched."

    .line 118
    invoke-static {p1, p2}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getFilesForSession$extraCallback;

    .line 123
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 125
    iget-object v1, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 1259
    iget v4, v1, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    .line 1260
    iget v5, v1, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    add-int/2addr v5, v3

    iput v5, v1, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    .line 1261
    iget-object v1, v1, Lo/getFilesForSession$onPostMessage;->extraCallback:[I

    aput v2, v1, v4

    .line 126
    invoke-direct {p0, v0, p1, v4}, Lo/getFilesForSession;->onMessageChannelReady(Lo/getFilesForSession$extraCallback;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lo/getFilesForSession;->ICustomTabsCallback:Lo/getFilesForSession$onPostMessage;

    .line 1281
    iget v1, v0, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    sub-int/2addr v1, v3

    iput v1, v0, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    .line 1282
    iget v1, v0, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    if-ltz v1, :cond_4

    if-eqz p1, :cond_3

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lo/getFilesForSession;->onMessageChannelReady(Landroid/view/View;Ljava/util/List;Lo/getFilesForSession$ICustomTabsCallback;)V

    :cond_3
    return-void

    .line 1283
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p2, v0, Lo/getFilesForSession$onPostMessage;->onNavigationEvent:I

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method
