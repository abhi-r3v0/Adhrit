.class public final Lo/setNavigationContentDescription$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setNavigationContentDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AppCompatImageHelper;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/AppCompatImageHelper;

.field public final onNavigationEvent:Lo/AppCompatImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AppCompatImageView<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/AppCompatImageHelper;Ljava/util/List;Lo/AppCompatImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "Ljava/util/List<",
            "Lo/AppCompatImageHelper;",
            ">;",
            "Lo/AppCompatImageView<",
            "TData;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_2

    .line 57
    check-cast p1, Lo/AppCompatImageHelper;

    iput-object p1, p0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onMessageChannelReady:Lo/AppCompatImageHelper;

    if-eqz p2, :cond_1

    .line 58
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/setNavigationContentDescription$ICustomTabsCallback;->extraCallback:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 59
    check-cast p3, Lo/AppCompatImageView;

    iput-object p3, p0, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    return-void

    .line 3029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "Lo/AppCompatImageView<",
            "TData;>;)V"
        }
    .end annotation

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Ljava/util/List;Lo/AppCompatImageView;)V

    return-void
.end method
