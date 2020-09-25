.class final enum Lo/valueOrNull$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/valueOrNull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/valueOrNull$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/valueOrNull$ICustomTabsCallback;

.field public static final enum Server:Lo/valueOrNull$ICustomTabsCallback;

.field public static final enum User:Lo/valueOrNull$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lo/valueOrNull$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "User"

    invoke-direct {v0, v2, v1}, Lo/valueOrNull$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/valueOrNull$ICustomTabsCallback;->User:Lo/valueOrNull$ICustomTabsCallback;

    .line 25
    new-instance v0, Lo/valueOrNull$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "Server"

    invoke-direct {v0, v3, v2}, Lo/valueOrNull$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/valueOrNull$ICustomTabsCallback;->Server:Lo/valueOrNull$ICustomTabsCallback;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/valueOrNull$ICustomTabsCallback;

    .line 23
    sget-object v4, Lo/valueOrNull$ICustomTabsCallback;->User:Lo/valueOrNull$ICustomTabsCallback;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/valueOrNull$ICustomTabsCallback;->$VALUES:[Lo/valueOrNull$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/valueOrNull$ICustomTabsCallback;
    .locals 1

    .line 23
    const-class v0, Lo/valueOrNull$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/valueOrNull$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/valueOrNull$ICustomTabsCallback;
    .locals 1

    .line 23
    sget-object v0, Lo/valueOrNull$ICustomTabsCallback;->$VALUES:[Lo/valueOrNull$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/valueOrNull$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/valueOrNull$ICustomTabsCallback;

    return-object v0
.end method
