.class final Lo/layoutHorizontal$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/layoutHorizontal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final extraCallback:Lo/shouldApplyFrameworkTintUsingColorFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/shouldApplyFrameworkTintUsingColorFilter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lo/shouldApplyFrameworkTintUsingColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/shouldApplyFrameworkTintUsingColorFilter<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lo/layoutHorizontal$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Class;

    .line 48
    iput-object p2, p0, Lo/layoutHorizontal$ICustomTabsCallback;->extraCallback:Lo/shouldApplyFrameworkTintUsingColorFilter;

    return-void
.end method
