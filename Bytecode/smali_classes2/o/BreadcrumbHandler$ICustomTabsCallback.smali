.class final Lo/BreadcrumbHandler$ICustomTabsCallback;
.super Lo/Onboarding$2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BreadcrumbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/Onboarding$2<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/BreadcrumbHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/BreadcrumbHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BreadcrumbHandler<",
            "TE;>;I)V"
        }
    .end annotation

    .line 379
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lo/Onboarding$2;-><init>(II)V

    .line 380
    iput-object p1, p0, Lo/BreadcrumbHandler$ICustomTabsCallback;->onPostMessage:Lo/BreadcrumbHandler;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lo/BreadcrumbHandler$ICustomTabsCallback;->onPostMessage:Lo/BreadcrumbHandler;

    invoke-virtual {v0, p1}, Lo/BreadcrumbHandler;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
