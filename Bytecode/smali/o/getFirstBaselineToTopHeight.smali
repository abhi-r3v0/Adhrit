.class public abstract Lo/getFirstBaselineToTopHeight;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/getFirstBaselineToTopHeight;

.field public static final onMessageChannelReady:Lo/getFirstBaselineToTopHeight;

.field public static final onPostMessage:Lo/getFirstBaselineToTopHeight;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lo/getFirstBaselineToTopHeight$2;

    invoke-direct {v0}, Lo/getFirstBaselineToTopHeight$2;-><init>()V

    sput-object v0, Lo/getFirstBaselineToTopHeight;->ICustomTabsCallback:Lo/getFirstBaselineToTopHeight;

    .line 64
    new-instance v0, Lo/getFirstBaselineToTopHeight$1;

    invoke-direct {v0}, Lo/getFirstBaselineToTopHeight$1;-><init>()V

    sput-object v0, Lo/getFirstBaselineToTopHeight;->onPostMessage:Lo/getFirstBaselineToTopHeight;

    .line 120
    new-instance v0, Lo/getFirstBaselineToTopHeight$3;

    invoke-direct {v0}, Lo/getFirstBaselineToTopHeight$3;-><init>()V

    sput-object v0, Lo/getFirstBaselineToTopHeight;->onMessageChannelReady:Lo/getFirstBaselineToTopHeight;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(ZLo/setImageURI;Lo/getSupportImageTintMode;)Z
.end method

.method public abstract onMessageChannelReady()Z
.end method

.method public abstract onMessageChannelReady(Lo/setImageURI;)Z
.end method

.method public abstract onNavigationEvent()Z
.end method
