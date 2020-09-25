.class final Lo/ensureClassLoader$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final extraCallback:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/ensureClassLoader;


# direct methods
.method varargs constructor <init>(Lo/ensureClassLoader;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ensureClassLoader;",
            "[TData;)V"
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lo/ensureClassLoader$ICustomTabsCallback;->onNavigationEvent:Lo/ensureClassLoader;

    .line 530
    iput-object p2, p0, Lo/ensureClassLoader$ICustomTabsCallback;->extraCallback:[Ljava/lang/Object;

    return-void
.end method
