.class public final Lo/getErrorMessageByTypesMap;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lo/getMessageUserType;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lo/getMessageUserType;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/getMessageUserType;


# direct methods
.method public constructor <init>(Lo/getMessageUserType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getErrorMessageByTypesMap;->onNavigationEvent:Lo/getMessageUserType;

    return-void
.end method

.method static synthetic extraCallback(Lo/getErrorMessageByTypesMap;)Lo/getMessageUserType;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/getErrorMessageByTypesMap;->onNavigationEvent:Lo/getMessageUserType;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/getErrorMessageByTypesMap;->onNavigationEvent:Lo/getMessageUserType;

    invoke-interface {v0, p1}, Lo/getMessageUserType;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lo/setExternalId;

    invoke-direct {v0, p0}, Lo/setExternalId;-><init>(Lo/getErrorMessageByTypesMap;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lo/UnsupportedFragmentConfig$FragmentErrorMessage;

    invoke-direct {v0, p0, p1}, Lo/UnsupportedFragmentConfig$FragmentErrorMessage;-><init>(Lo/getErrorMessageByTypesMap;I)V

    return-object v0
.end method

.method public final onNavigationEvent()Lo/getMessageUserType;
    .locals 0

    return-object p0
.end method

.method public final onPostMessage(I)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/getErrorMessageByTypesMap;->onNavigationEvent:Lo/getMessageUserType;

    invoke-interface {v0, p1}, Lo/getMessageUserType;->onPostMessage(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/getErrorMessageByTypesMap;->onNavigationEvent:Lo/getMessageUserType;

    invoke-interface {v0}, Lo/getMessageUserType;->onPostMessage()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget-object v0, p0, Lo/getErrorMessageByTypesMap;->onNavigationEvent:Lo/getMessageUserType;

    invoke-interface {v0}, Lo/getMessageUserType;->size()I

    move-result v0

    return v0
.end method
