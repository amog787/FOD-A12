.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Landroid/net/NetworkIdentity;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/NetworkIdentitySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_DEFAULT_NETWORK:I = 0x5

.field private static final VERSION_ADD_METERED:I = 0x4

.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_OEM_MANAGED_NETWORK:I = 0x6

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 21
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/util/HashSet;-><init>()V

    .line 49
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 50
    .local v0, "version":I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 51
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_7

    .line 52
    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    .line 53
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    .line 55
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v13

    .line 56
    .local v13, "type":I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v14

    .line 57
    .local v14, "subType":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, "subscriberId":Ljava/lang/String;
    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    .local v4, "networkId":Ljava/lang/String;
    goto :goto_1

    .line 62
    .end local v4    # "networkId":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v16, v4

    .line 65
    .local v16, "networkId":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x2

    if-lt v0, v4, :cond_2

    .line 66
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    move/from16 v17, v4

    .local v4, "roaming":Z
    goto :goto_2

    .line 68
    .end local v4    # "roaming":Z
    :cond_2
    const/4 v4, 0x0

    move/from16 v17, v4

    .line 72
    .local v17, "roaming":Z
    :goto_2
    const/4 v4, 0x4

    if-lt v0, v4, :cond_3

    .line 73
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    .local v3, "metered":Z
    goto :goto_3

    .line 78
    .end local v3    # "metered":Z
    :cond_3
    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 82
    .restart local v3    # "metered":Z
    :goto_3
    const/4 v4, 0x5

    if-lt v0, v4, :cond_5

    .line 83
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    move/from16 v18, v4

    .local v4, "defaultNetwork":Z
    goto :goto_4

    .line 85
    .end local v4    # "defaultNetwork":Z
    :cond_5
    const/4 v4, 0x1

    move/from16 v18, v4

    .line 89
    .local v18, "defaultNetwork":Z
    :goto_4
    const/4 v4, 0x6

    if-lt v0, v4, :cond_6

    .line 90
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    move/from16 v19, v4

    .local v4, "oemNetCapabilities":I
    goto :goto_5

    .line 92
    .end local v4    # "oemNetCapabilities":I
    :cond_6
    const/4 v4, 0x0

    move/from16 v19, v4

    .line 95
    .local v19, "oemNetCapabilities":I
    :goto_5
    new-instance v12, Landroid/net/NetworkIdentity;

    move-object v4, v12

    move v5, v13

    move v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move v10, v3

    move/from16 v11, v18

    move/from16 v20, v0

    move-object v0, v12

    .end local v0    # "version":I
    .local v20, "version":I
    move/from16 v12, v19

    invoke-direct/range {v4 .. v12}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZI)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v3    # "metered":Z
    .end local v13    # "type":I
    .end local v14    # "subType":I
    .end local v15    # "subscriberId":Ljava/lang/String;
    .end local v16    # "networkId":Ljava/lang/String;
    .end local v17    # "roaming":Z
    .end local v18    # "defaultNetwork":Z
    .end local v19    # "oemNetCapabilities":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v20

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    .end local v20    # "version":I
    .restart local v0    # "version":I
    :cond_7
    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static writeOptionalString(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 158
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 162
    :goto_0
    return-void
.end method


# virtual methods
.method public areAllMembersOnDefaultNetwork()Z
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 145
    return v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 148
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    goto :goto_0

    .line 152
    :cond_2
    return v1
.end method

.method public compareTo(Lcom/android/server/net/NetworkIdentitySet;)I
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkIdentitySet;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 178
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 179
    .local v1, "anotherIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result p1

    return p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 183
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 185
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkIdentity;

    .line 186
    .local v3, "ident":Landroid/net/NetworkIdentity;
    const-wide v4, 0x20b00000001L

    invoke-virtual {v3, p1, v4, v5}, Landroid/net/NetworkIdentity;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 187
    .end local v3    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 190
    return-void
.end method

.method public isAnyMemberMetered()Z
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    return v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 121
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    goto :goto_0

    .line 125
    :cond_2
    return v1
.end method

.method public isAnyMemberRoaming()Z
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    return v1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 134
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    goto :goto_0

    .line 138
    :cond_2
    return v1
.end method

.method public writeToStream(Ljava/io/DataOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 104
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 105
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 106
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 109
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 110
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 111
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getOemManaged()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 112
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method
