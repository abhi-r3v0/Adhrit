.class public final Lo/doOnboarding;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/Onboarding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Onboarding<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/Onboarding;

    invoke-direct {v0}, Lo/Onboarding;-><init>()V

    iput-object v0, p0, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    return-void
.end method
