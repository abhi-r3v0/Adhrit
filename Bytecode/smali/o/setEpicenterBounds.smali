.class public abstract Lo/setEpicenterBounds;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setEpicenterBounds$onNavigationEvent;,
        Lo/setEpicenterBounds$onMessageChannelReady;,
        Lo/setEpicenterBounds$onPostMessage;,
        Lo/setEpicenterBounds$ICustomTabsCallback;,
        Lo/setEpicenterBounds$ICustomTabsCallback$Stub;,
        Lo/setEpicenterBounds$asBinder;,
        Lo/setEpicenterBounds$asInterface;,
        Lo/setEpicenterBounds$onRelationshipValidationResult;,
        Lo/setEpicenterBounds$onTransact;,
        Lo/setEpicenterBounds$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00142\u00020\u0001:\n\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001cB7\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nR\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\u0082\u0001\t\u001d\u001e\u001f !\"#$%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cred/pay/core/CardProvider;",
        "",
        "name",
        "",
        "pattern",
        "cvvLength",
        "",
        "cardNumberLength",
        "Lkotlin/ranges/IntRange;",
        "cardIcon",
        "(Ljava/lang/String;Ljava/lang/String;ILkotlin/ranges/IntRange;I)V",
        "getCardIcon",
        "()I",
        "getCardNumberLength",
        "()Lkotlin/ranges/IntRange;",
        "getCvvLength",
        "getName",
        "()Ljava/lang/String;",
        "getPattern",
        "Amex",
        "Companion",
        "Diners",
        "Discover",
        "Jcb",
        "MaestroCard",
        "MasterCard",
        "Rupay",
        "Unknown",
        "Visa",
        "Lcom/cred/pay/core/CardProvider$Amex;",
        "Lcom/cred/pay/core/CardProvider$Discover;",
        "Lcom/cred/pay/core/CardProvider$Jcb;",
        "Lcom/cred/pay/core/CardProvider$Diners;",
        "Lcom/cred/pay/core/CardProvider$Visa;",
        "Lcom/cred/pay/core/CardProvider$MasterCard;",
        "Lcom/cred/pay/core/CardProvider$MaestroCard;",
        "Lcom/cred/pay/core/CardProvider$Rupay;",
        "Lcom/cred/pay/core/CardProvider$Unknown;",
        "credpaycore_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onTransact:Lo/setEpicenterBounds$extraCallback;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final extraCallback:Lo/forEachTree;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setEpicenterBounds$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setEpicenterBounds$extraCallback;-><init>(B)V

    sput-object v0, Lo/setEpicenterBounds;->onTransact:Lo/setEpicenterBounds$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILo/forEachTree;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setEpicenterBounds;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/setEpicenterBounds;->ICustomTabsCallback:Ljava/lang/String;

    iput p3, p0, Lo/setEpicenterBounds;->onNavigationEvent:I

    iput-object p4, p0, Lo/setEpicenterBounds;->extraCallback:Lo/forEachTree;

    iput p5, p0, Lo/setEpicenterBounds;->onMessageChannelReady:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILo/forEachTree;IB)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lo/setEpicenterBounds;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/forEachTree;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILo/forEachTree;II)V
    .locals 6

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    const-string p2, "XXXX-XXXX-XXXX-XXXX"

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x3

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    const/16 p3, 0x10

    if-eqz p2, :cond_2

    .line 7
    new-instance p4, Lo/forEachTree;

    invoke-direct {p4, p3, p3}, Lo/forEachTree;-><init>(II)V

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 8
    sget p5, Lo/setContentWidth$onPostMessage;->ic_new_card_placeholder:I

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/setEpicenterBounds;-><init>(Ljava/lang/String;Ljava/lang/String;ILo/forEachTree;I)V

    return-void
.end method
