.class public final Lo/flush;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:Z

.field onNavigationEvent:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lo/flush;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lo/flush;->onNavigationEvent:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lo/flush;->ICustomTabsCallback:I

    .line 6
    iput-boolean p1, p0, Lo/flush;->extraCallback:Z

    return-void
.end method
