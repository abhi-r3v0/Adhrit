.class final Lo/getChildKey$2;
.super Lo/getChildKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildKey;->onMessageChannelReady(Lo/isFiltered;JLo/fullLimitUpdateChild;)Lo/getChildKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/fullLimitUpdateChild;

.field private synthetic onMessageChannelReady:Lo/isFiltered;

.field private synthetic onNavigationEvent:J


# direct methods
.method constructor <init>(Lo/isFiltered;JLo/fullLimitUpdateChild;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lo/getChildKey$2;->onMessageChannelReady:Lo/isFiltered;

    iput-wide p2, p0, Lo/getChildKey$2;->onNavigationEvent:J

    iput-object p4, p0, Lo/getChildKey$2;->extraCallback:Lo/fullLimitUpdateChild;

    invoke-direct {p0}, Lo/getChildKey;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lo/getChildKey$2;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onMessageChannelReady()Lo/fullLimitUpdateChild;
    .locals 1

    .line 234
    iget-object v0, p0, Lo/getChildKey$2;->extraCallback:Lo/fullLimitUpdateChild;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/isFiltered;
    .locals 1

    .line 226
    iget-object v0, p0, Lo/getChildKey$2;->onMessageChannelReady:Lo/isFiltered;

    return-object v0
.end method
