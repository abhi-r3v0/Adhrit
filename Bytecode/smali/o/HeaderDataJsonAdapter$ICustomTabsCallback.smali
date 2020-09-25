.class public final Lo/HeaderDataJsonAdapter$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HeaderDataJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final extraCallback:[Lo/JuspaySessionToken;

.field private final onMessageChannelReady:[I

.field private final onNavigationEvent:I

.field private final onPostMessage:[I

.field private final onRelationshipValidationResult:[[[I

.field private final onTransact:Lo/JuspaySessionToken;


# direct methods
.method constructor <init>([I[Lo/JuspaySessionToken;[I[[[ILo/JuspaySessionToken;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:[I

    .line 114
    iput-object p2, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->extraCallback:[Lo/JuspaySessionToken;

    .line 115
    iput-object p4, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onRelationshipValidationResult:[[[I

    .line 116
    iput-object p3, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage:[I

    .line 117
    iput-object p5, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onTransact:Lo/JuspaySessionToken;

    .line 118
    array-length p1, p1

    iput p1, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    .line 119
    iput p1, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    .line 124
    iget v0, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent:I

    return v0
.end method

.method public final onNavigationEvent(I)I
    .locals 1

    .line 135
    iget-object v0, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:[I

    aget p1, v0, p1

    return p1
.end method

.method public final onNavigationEvent(III)I
    .locals 1

    .line 224
    iget-object v0, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onRelationshipValidationResult:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    aget p1, p1, p3

    and-int/lit8 p1, p1, 0x7

    return p1
.end method

.method public final onPostMessage(IIZ)I
    .locals 6

    .line 251
    iget-object v0, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->extraCallback:[Lo/JuspaySessionToken;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v0

    iget v0, v0, Lo/getJuspayUpi;->ICustomTabsCallback:I

    .line 253
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 256
    invoke-virtual {p0, p1, p2, v2}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onNavigationEvent(III)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    if-eqz p3, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 260
    aput v2, v1, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    .line 264
    invoke-virtual {p0, p1, p2, p3}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage(II[I)I

    move-result p1

    return p1
.end method

.method public final onPostMessage(II[I)I
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 282
    :goto_0
    array-length v5, p3

    if-ge v0, v5, :cond_1

    .line 283
    aget v5, p3, v0

    .line 284
    iget-object v6, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->extraCallback:[Lo/JuspaySessionToken;

    aget-object v6, v6, p1

    .line 285
    invoke-virtual {v6, p2}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v6

    invoke-virtual {v6, v5}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v5

    iget-object v5, v5, Lo/p$a;->onTransact:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    if-nez v2, :cond_0

    move-object v4, v5

    goto :goto_1

    .line 289
    :cond_0
    invoke-static {v4, v5}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    .line 291
    :goto_1
    iget-object v2, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onRelationshipValidationResult:[[[I

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x18

    .line 292
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    move v2, v6

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 297
    iget-object p2, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->onPostMessage:[I

    aget p1, p2, p1

    .line 298
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2
    return v3
.end method

.method public final onPostMessage(I)Lo/JuspaySessionToken;
    .locals 1

    .line 145
    iget-object v0, p0, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;->extraCallback:[Lo/JuspaySessionToken;

    aget-object p1, v0, p1

    return-object p1
.end method
