.class final synthetic Lo/FreshchatInvalidUserPropertyException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dj;


# static fields
.field static final ICustomTabsCallback:Lo/dj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/FreshchatInvalidUserPropertyException;

    invoke-direct {v0}, Lo/FreshchatInvalidUserPropertyException;-><init>()V

    sput-object v0, Lo/FreshchatInvalidUserPropertyException;->ICustomTabsCallback:Lo/dj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()Z
    .locals 1

    invoke-static {}, Lo/MethodNotAllowedException;->extraCallback()Z

    move-result v0

    return v0
.end method
