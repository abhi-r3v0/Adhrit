.class public final Lo/getThumbOffset$ICustomTabsCallback;
.super Lo/getThumbOffset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getThumbOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/states/CardStatementStatus$CredentialNotAdded;",
        "Lcom/dreamplug/androidapp/data/states/CardStatementStatus;",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/getThumbOffset$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lo/getThumbOffset$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getThumbOffset$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/getThumbOffset$ICustomTabsCallback;->extraCallback:Lo/getThumbOffset$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lo/getThumbOffset;-><init>(B)V

    return-void
.end method
