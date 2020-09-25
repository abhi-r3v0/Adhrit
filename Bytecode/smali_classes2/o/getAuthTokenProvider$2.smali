.class final Lo/getAuthTokenProvider$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getIdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAuthTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getIdManager<",
        "Lo/Onboarding$3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Ljava/lang/Object;
    .locals 1

    .line 2093
    new-instance v0, Lo/Onboarding$3;

    invoke-direct {v0}, Lo/Onboarding$3;-><init>()V

    return-object v0
.end method
