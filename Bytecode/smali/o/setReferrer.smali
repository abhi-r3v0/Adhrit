.class public final enum Lo/setReferrer;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setReferrer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/setReferrer;

.field public static final enum extraCallback:Lo/setReferrer;

.field public static final enum onNavigationEvent:Lo/setReferrer;

.field public static final enum onPostMessage:Lo/setReferrer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lo/setReferrer;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lo/setReferrer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setReferrer;->extraCallback:Lo/setReferrer;

    .line 22
    new-instance v0, Lo/setReferrer;

    const/4 v2, 0x1

    const-string v3, "VERY_LOW"

    invoke-direct {v0, v3, v2}, Lo/setReferrer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setReferrer;->onNavigationEvent:Lo/setReferrer;

    .line 25
    new-instance v0, Lo/setReferrer;

    const/4 v3, 0x2

    const-string v4, "HIGHEST"

    invoke-direct {v0, v4, v3}, Lo/setReferrer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setReferrer;->onPostMessage:Lo/setReferrer;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/setReferrer;

    .line 17
    sget-object v5, Lo/setReferrer;->extraCallback:Lo/setReferrer;

    aput-object v5, v4, v1

    sget-object v1, Lo/setReferrer;->onNavigationEvent:Lo/setReferrer;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/setReferrer;->ICustomTabsCallback:[Lo/setReferrer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setReferrer;
    .locals 1

    .line 17
    const-class v0, Lo/setReferrer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setReferrer;

    return-object p0
.end method

.method public static values()[Lo/setReferrer;
    .locals 1

    .line 17
    sget-object v0, Lo/setReferrer;->ICustomTabsCallback:[Lo/setReferrer;

    invoke-virtual {v0}, [Lo/setReferrer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setReferrer;

    return-object v0
.end method
