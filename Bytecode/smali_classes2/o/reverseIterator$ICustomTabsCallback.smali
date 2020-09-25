.class public final enum Lo/reverseIterator$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/reverseIterator$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

.field private static final synthetic asInterface:[Lo/reverseIterator$ICustomTabsCallback;

.field private static enum extraCallback:Lo/reverseIterator$ICustomTabsCallback;

.field public static final enum onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

.field private static enum onNavigationEvent:Lo/reverseIterator$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/reverseIterator$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 85
    new-instance v0, Lo/reverseIterator$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "UNARY"

    invoke-direct {v0, v2, v1}, Lo/reverseIterator$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/reverseIterator$ICustomTabsCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    .line 90
    new-instance v0, Lo/reverseIterator$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "CLIENT_STREAMING"

    invoke-direct {v0, v3, v2}, Lo/reverseIterator$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/reverseIterator$ICustomTabsCallback;->onNavigationEvent:Lo/reverseIterator$ICustomTabsCallback;

    .line 95
    new-instance v0, Lo/reverseIterator$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "SERVER_STREAMING"

    invoke-direct {v0, v4, v3}, Lo/reverseIterator$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/reverseIterator$ICustomTabsCallback;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    .line 100
    new-instance v0, Lo/reverseIterator$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "BIDI_STREAMING"

    invoke-direct {v0, v5, v4}, Lo/reverseIterator$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/reverseIterator$ICustomTabsCallback;->onPostMessage:Lo/reverseIterator$ICustomTabsCallback;

    .line 106
    new-instance v0, Lo/reverseIterator$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lo/reverseIterator$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/reverseIterator$ICustomTabsCallback;->extraCallback:Lo/reverseIterator$ICustomTabsCallback;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/reverseIterator$ICustomTabsCallback;

    .line 81
    sget-object v7, Lo/reverseIterator$ICustomTabsCallback;->onMessageChannelReady:Lo/reverseIterator$ICustomTabsCallback;

    aput-object v7, v6, v1

    sget-object v1, Lo/reverseIterator$ICustomTabsCallback;->onNavigationEvent:Lo/reverseIterator$ICustomTabsCallback;

    aput-object v1, v6, v2

    sget-object v1, Lo/reverseIterator$ICustomTabsCallback;->ICustomTabsCallback:Lo/reverseIterator$ICustomTabsCallback;

    aput-object v1, v6, v3

    sget-object v1, Lo/reverseIterator$ICustomTabsCallback;->onPostMessage:Lo/reverseIterator$ICustomTabsCallback;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/reverseIterator$ICustomTabsCallback;->asInterface:[Lo/reverseIterator$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/reverseIterator$ICustomTabsCallback;
    .locals 1

    .line 81
    const-class v0, Lo/reverseIterator$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/reverseIterator$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/reverseIterator$ICustomTabsCallback;
    .locals 1

    .line 81
    sget-object v0, Lo/reverseIterator$ICustomTabsCallback;->asInterface:[Lo/reverseIterator$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/reverseIterator$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/reverseIterator$ICustomTabsCallback;

    return-object v0
.end method
