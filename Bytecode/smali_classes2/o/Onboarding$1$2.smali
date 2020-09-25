.class final Lo/Onboarding$1$2;
.super Lo/Onboarding$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Onboarding$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/Onboarding$1;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()J
    .locals 2

    .line 51
    invoke-static {}, Lo/performUpdateApp;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method
