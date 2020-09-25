.class final Lo/Participant;
.super Lo/setTaggedItemId;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setTaggedItemId;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/getReplacementStr;


# direct methods
.method private constructor <init>(Lo/getReplacementStr;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/Participant;->onNavigationEvent:Lo/getReplacementStr;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/setTaggedItemId;-><init>(Lo/getReplacementStr;Lo/MessageMaskingConfig;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getReplacementStr;Lo/MessageMaskingConfig;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/Participant;-><init>(Lo/getReplacementStr;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lo/getProfilePicUrl;

    iget-object v1, p0, Lo/Participant;->onNavigationEvent:Lo/getReplacementStr;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/getProfilePicUrl;-><init>(Lo/getReplacementStr;Lo/MessageMaskingConfig;)V

    return-object v0
.end method
