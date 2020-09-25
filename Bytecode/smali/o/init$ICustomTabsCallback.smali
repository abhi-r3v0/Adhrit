.class public final enum Lo/init$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/init;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/init$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/init$ICustomTabsCallback;

.field private static final synthetic extraCallback:[Lo/init$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/init$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lo/init$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "SIMULTANEOUSLY"

    invoke-direct {v0, v2, v1}, Lo/init$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/init$ICustomTabsCallback;->onPostMessage:Lo/init$ICustomTabsCallback;

    .line 13
    new-instance v0, Lo/init$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "INDIVIDUALLY"

    invoke-direct {v0, v3, v2}, Lo/init$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/init$ICustomTabsCallback;->ICustomTabsCallback:Lo/init$ICustomTabsCallback;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/init$ICustomTabsCallback;

    .line 11
    sget-object v4, Lo/init$ICustomTabsCallback;->onPostMessage:Lo/init$ICustomTabsCallback;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/init$ICustomTabsCallback;->extraCallback:[Lo/init$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static ICustomTabsCallback(I)Lo/init$ICustomTabsCallback;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 20
    sget-object p0, Lo/init$ICustomTabsCallback;->ICustomTabsCallback:Lo/init$ICustomTabsCallback;

    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown trim path type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    sget-object p0, Lo/init$ICustomTabsCallback;->onPostMessage:Lo/init$ICustomTabsCallback;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/init$ICustomTabsCallback;
    .locals 1

    .line 11
    const-class v0, Lo/init$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/init$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/init$ICustomTabsCallback;
    .locals 1

    .line 11
    sget-object v0, Lo/init$ICustomTabsCallback;->extraCallback:[Lo/init$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/init$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/init$ICustomTabsCallback;

    return-object v0
.end method
